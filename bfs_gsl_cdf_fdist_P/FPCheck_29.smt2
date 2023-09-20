(declare-fun nu1_ack!180 () (_ BitVec 64))
(declare-fun nu2_ack!181 () (_ BitVec 64))
(declare-fun x_ack!182 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!181)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!180)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!182)
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!181)
               ((_ to_fp 11 53) nu1_ack!180))))
(assert (FPCHECK_FDIV_ACCURACY
  x_ack!182
  (fp.add roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) nu2_ack!181)
                  ((_ to_fp 11 53) nu1_ack!180))
          ((_ to_fp 11 53) x_ack!182))))

(check-sat)
(exit)
