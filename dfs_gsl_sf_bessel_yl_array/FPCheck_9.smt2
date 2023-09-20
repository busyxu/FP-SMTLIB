(declare-fun a_ack!45 () (_ BitVec 32))
(declare-fun b_ack!44 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!45 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!44) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!45))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!44) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!44) ((_ to_fp 11 53) #x0004000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!44)) ((_ to_fp 11 53) #x3f20000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!44)
                  ((_ to_fp 11 53) b_ack!44)))))

(check-sat)
(exit)
