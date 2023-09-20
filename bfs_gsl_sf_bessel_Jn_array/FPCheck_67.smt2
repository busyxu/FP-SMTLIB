(declare-fun a_ack!346 () (_ BitVec 32))
(declare-fun b_ack!344 () (_ BitVec 32))
(declare-fun c_ack!345 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!346 #x00000000)))
(assert (not (bvslt b_ack!344 a_ack!346)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!345) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!344) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!345) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!344)))
(assert (not (= #x00000000 b_ack!344)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!345) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 b_ack!344))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.lt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) c_ack!345)
                 ((_ to_fp 11 53) c_ack!345))
         (fp.mul roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x3f48406003b2ae5a)))))
(assert (not (fp.lt ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #x00000001 b_ack!344))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!345) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!345) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #x00000001 b_ack!344))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 b_ack!344))
       ((_ to_fp 11 53) #x41dfffffff800000)))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             ((_ to_fp 11 53)
                               roundNearestTiesToEven
                               (bvadd #x00000001 b_ack!344))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
  (FPCHECK_FADD_UNDERFLOW
    ((_ to_fp 11 53)
      roundNearestTiesToEven
      ((_ fp.to_sbv 32) roundTowardZero a!1))
    #x3ff0000000000000)))

(check-sat)
(exit)
