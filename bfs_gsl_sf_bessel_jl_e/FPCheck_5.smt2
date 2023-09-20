(declare-fun a_ack!22 () (_ BitVec 32))
(declare-fun b_ack!21 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!22 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!21) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!21) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!22))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!21))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3cc0000000000000
  (fp.abs (fp.div roundNearestTiesToEven
                  (CF_sin b_ack!21)
                  ((_ to_fp 11 53) b_ack!21)))))

(check-sat)
(exit)
