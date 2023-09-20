(declare-fun b_ack!157 () (_ BitVec 64))
(declare-fun a_ack!158 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!157) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!158) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!157) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!157))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!157)
                       ((_ to_fp 11 53) b_ack!157))
               ((_ to_fp 11 53) b_ack!157))
       ((_ to_fp 11 53) b_ack!157)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!157))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!157)
                       ((_ to_fp 11 53) b_ack!157))
               ((_ to_fp 11 53) b_ack!157))
       ((_ to_fp 11 53) b_ack!157)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!157)
               ((_ to_fp 11 53) b_ack!157))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!158)
                       ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!158) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!157) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!157) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!158) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!158) ((_ to_fp 11 53) #x41dfffffff800000)))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!158)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.eq (fp.sub roundNearestTiesToEven
                      ((_ to_fp 11 53) a_ack!158)
                      ((_ to_fp 11 53) roundNearestTiesToEven a!1))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!158)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.eq (fp.sub roundNearestTiesToEven
                      ((_ to_fp 11 53) a_ack!158)
                      ((_ to_fp 11 53) roundNearestTiesToEven a!1))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!158)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.gt (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!158)
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
  (FPCHECK_FADD_OVERFLOW
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) roundNearestTiesToEven a!1)
            ((_ to_fp 11 53) #x3ff0000000000000))
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) a_ack!158)
            ((_ to_fp 11 53) roundNearestTiesToEven a!1)))))

(check-sat)
(exit)
