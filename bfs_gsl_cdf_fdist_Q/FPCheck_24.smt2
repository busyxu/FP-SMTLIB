(declare-fun nu1_ack!150 () (_ BitVec 64))
(declare-fun nu2_ack!151 () (_ BitVec 64))
(declare-fun x_ack!152 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!151)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!150)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!152)
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!151)
               ((_ to_fp 11 53) nu1_ack!150))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) nu2_ack!151)
          ((_ to_fp 11 53) nu1_ack!150))
  x_ack!152))

(check-sat)
(exit)
