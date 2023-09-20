(declare-fun a_ack!3050 () (_ BitVec 32))
(declare-fun b_ack!3049 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!3050 #x00000000)))
(assert (not (= #x00000000 a_ack!3050)))
(assert (= #x00000001 a_ack!3050))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3049) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!3049) ((_ to_fp 11 53) #xc024000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!3049) ((_ to_fp 11 53) #xc010000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) b_ack!3049))
  #x3ff0000000000000))

(check-sat)
(exit)
