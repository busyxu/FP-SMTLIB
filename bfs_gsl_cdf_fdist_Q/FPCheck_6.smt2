(declare-fun nu1_ack!30 () (_ BitVec 64))
(declare-fun nu2_ack!31 () (_ BitVec 64))
(declare-fun x_ack!32 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!31)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!30)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!32)
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!31)
                    ((_ to_fp 11 53) nu1_ack!30)))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) nu2_ack!31)
          ((_ to_fp 11 53) nu1_ack!30))
  x_ack!32))

(check-sat)
(exit)
