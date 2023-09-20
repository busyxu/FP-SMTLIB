(declare-fun nu1_ack!192 () (_ BitVec 64))
(declare-fun nu2_ack!193 () (_ BitVec 64))
(declare-fun x_ack!194 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!193)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!192)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!194)
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!193)
               ((_ to_fp 11 53) nu1_ack!192))))
(assert (FPCHECK_FDIV_ZERO
  x_ack!194
  (fp.add roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) nu2_ack!193)
                  ((_ to_fp 11 53) nu1_ack!192))
          ((_ to_fp 11 53) x_ack!194))))

(check-sat)
(exit)
