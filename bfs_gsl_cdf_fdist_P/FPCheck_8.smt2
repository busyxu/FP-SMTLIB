(declare-fun nu1_ack!45 () (_ BitVec 64))
(declare-fun nu2_ack!46 () (_ BitVec 64))
(declare-fun x_ack!47 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!46)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!45)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!47)
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!46)
                    ((_ to_fp 11 53) nu1_ack!45)))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) nu2_ack!46)
          ((_ to_fp 11 53) nu1_ack!45))
  (fp.add roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) nu2_ack!46)
                  ((_ to_fp 11 53) nu1_ack!45))
          ((_ to_fp 11 53) x_ack!47))))

(check-sat)
(exit)
