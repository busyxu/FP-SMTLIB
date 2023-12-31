(declare-fun nu1_ack!201 () (_ BitVec 64))
(declare-fun nu2_ack!202 () (_ BitVec 64))
(declare-fun x_ack!203 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!202)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!201)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!203)
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!202)
               ((_ to_fp 11 53) nu1_ack!201))))
(assert (FPCHECK_FDIV_OVERFLOW nu1_ack!201 #x4000000000000000))

(check-sat)
(exit)
