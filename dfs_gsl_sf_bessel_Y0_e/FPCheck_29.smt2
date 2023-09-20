(declare-fun a_ack!45 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!45) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!45) ((_ to_fp 11 53) #x0004000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!45)) ((_ to_fp 11 53) #x3f20000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!45))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!45)
                       ((_ to_fp 11 53) a_ack!45))
               ((_ to_fp 11 53) a_ack!45))
       ((_ to_fp 11 53) a_ack!45)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!45))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!45)
                       ((_ to_fp 11 53) a_ack!45))
               ((_ to_fp 11 53) a_ack!45))
       ((_ to_fp 11 53) a_ack!45)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!45)
                                   ((_ to_fp 11 53) a_ack!45))))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) a_ack!45)))))
  (FPCHECK_FMUL_UNDERFLOW #x3cc0000000000000 a!2))))

(check-sat)
(exit)
