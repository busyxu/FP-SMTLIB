(declare-fun nu1_ack!45 () (_ BitVec 64))
(declare-fun nu2_ack!46 () (_ BitVec 64))
(declare-fun x_ack!47 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!46)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!45)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!47)
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!46)
               ((_ to_fp 11 53) nu1_ack!45))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) nu2_ack!46)
          ((_ to_fp 11 53) nu1_ack!45))
  x_ack!47))

(check-sat)
(exit)
