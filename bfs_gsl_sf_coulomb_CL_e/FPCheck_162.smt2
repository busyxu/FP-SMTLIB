(declare-fun a_ack!631 () (_ BitVec 64))
(declare-fun b_ack!630 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!631) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!631))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!630)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!631)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3cb0000000000000)))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!631)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW b_ack!630 b_ack!630))

(check-sat)
(exit)
