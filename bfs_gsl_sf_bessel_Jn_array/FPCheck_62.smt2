(declare-fun a_ack!328 () (_ BitVec 32))
(declare-fun b_ack!326 () (_ BitVec 32))
(declare-fun c_ack!327 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!328 #x00000000)))
(assert (not (bvslt b_ack!326 a_ack!328)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!327) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!326) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!327) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!326)))
(assert (not (= #x00000000 b_ack!326)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!327) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 b_ack!326))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.lt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) c_ack!327)
                 ((_ to_fp 11 53) c_ack!327))
         (fp.mul roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x3f48406003b2ae5a)))))
(assert (not (fp.lt ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #x00000001 b_ack!326))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!327) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!327) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #x00000001 b_ack!326))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 b_ack!326))
       ((_ to_fp 11 53) #x41dfffffff800000)))
(assert (FPCHECK_FADD_ACCURACY
  ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 b_ack!326))
  #x3fe0000000000000))

(check-sat)
(exit)
