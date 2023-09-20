(declare-fun a_ack!48 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!48) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!48) ((_ to_fp 11 53) #x0004000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!48)) ((_ to_fp 11 53) #x3f20000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!48))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!48)
                       ((_ to_fp 11 53) a_ack!48))
               ((_ to_fp 11 53) a_ack!48))
       ((_ to_fp 11 53) a_ack!48)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!48))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!48)
                       ((_ to_fp 11 53) a_ack!48))
               ((_ to_fp 11 53) a_ack!48))
       ((_ to_fp 11 53) a_ack!48)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!48)
                                   ((_ to_fp 11 53) a_ack!48))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!48)
                                   ((_ to_fp 11 53) a_ack!48)))
                   ((_ to_fp 11 53) #x4028000000000000)))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!48)
                                   ((_ to_fp 11 53) a_ack!48))))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) a_ack!48)))))
  (FPCHECK_FADD_OVERFLOW
    (fp.abs (fp.div roundNearestTiesToEven
                    (fp.abs a!1)
                    ((_ to_fp 11 53) a_ack!48)))
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3cc0000000000000) a!3)))))

(check-sat)
(exit)
