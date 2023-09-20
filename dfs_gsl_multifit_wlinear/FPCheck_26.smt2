(declare-fun e0_ack!84 () (_ BitVec 64))
(declare-fun e1_ack!85 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun e2_ack!86 () (_ BitVec 64))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e0_ack!84)
                    ((_ to_fp 11 53) e0_ack!84))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e1_ack!85)
                    ((_ to_fp 11 53) e1_ack!85))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) e2_ack!86)
          ((_ to_fp 11 53) e2_ack!86))))

(check-sat)
(exit)
