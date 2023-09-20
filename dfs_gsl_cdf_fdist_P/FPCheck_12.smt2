(declare-fun nu1_ack!69 () (_ BitVec 64))
(declare-fun nu2_ack!70 () (_ BitVec 64))
(declare-fun x_ack!71 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!70)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!69)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!71)
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!70)
               ((_ to_fp 11 53) nu1_ack!69))))
(assert (FPCHECK_FDIV_ACCURACY
  x_ack!71
  (fp.add roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) nu2_ack!70)
                  ((_ to_fp 11 53) nu1_ack!69))
          ((_ to_fp 11 53) x_ack!71))))

(check-sat)
(exit)
