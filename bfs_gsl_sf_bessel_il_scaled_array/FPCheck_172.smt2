(declare-fun b_ack!617 () (_ BitVec 64))
(declare-fun a_ack!618 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!617) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!617) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!618) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!617) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!618)))
(assert (not (= #x00000000 a_ack!618)))
(assert (not (= #x00000001 a_ack!618)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!617))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!617)
                       ((_ to_fp 11 53) b_ack!617))
               ((_ to_fp 11 53) b_ack!617))
       ((_ to_fp 11 53) b_ack!617)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!617))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!617)
                       ((_ to_fp 11 53) b_ack!617))
               ((_ to_fp 11 53) b_ack!617))
       ((_ to_fp 11 53) b_ack!617)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!618))
                           ((_ to_fp 11 53) #x3ff8000000000000)))))
  (fp.lt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!617)
                 ((_ to_fp 11 53) b_ack!617))
         (fp.div roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4005bf0a8b145769)))))
(assert (let ((a!1 (fp.lt (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvadd #x00000001 a_ack!618))
                          ((_ to_fp 11 53) #x3fe0000000000000))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!617) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!617) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvadd #x00000001 a_ack!618))
                          ((_ to_fp 11 53) #x3fe0000000000000))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53)
                 roundNearestTiesToEven
                 (bvadd #x00000001 a_ack!618))
               ((_ to_fp 11 53) #x3fe0000000000000))
       ((_ to_fp 11 53) #x41dfffffff800000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!618))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
  (FPCHECK_FADD_OVERFLOW
    ((_ to_fp 11 53)
      roundNearestTiesToEven
      ((_ fp.to_sbv 32) roundTowardZero (CF_floor a!1)))
    #x3ff0000000000000)))

(check-sat)
(exit)
