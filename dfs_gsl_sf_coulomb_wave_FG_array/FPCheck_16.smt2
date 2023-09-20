(declare-fun d_ack!94 () (_ BitVec 64))
(declare-fun b_ack!93 () (_ BitVec 32))
(declare-fun a_ack!96 () (_ BitVec 64))
(declare-fun c_ack!95 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!94) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!94) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!96)
                     ((_ to_fp 11 53) roundNearestTiesToEven b_ack!93))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (let ((a!1 (fp.leq (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!96)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!93))
                           ((_ to_fp 11 53) roundNearestTiesToEven b_ack!93))
                   ((_ to_fp 11 53) #xbfe0000000000000))))
  (not a!1)))
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!94) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!94) ((_ to_fp 11 53) #x3ff3333333333333))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!94)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    ((_ to_fp 11 53) c_ack!95)))))
(assert (FPCHECK_FMUL_UNDERFLOW #x4010000000000000 d_ack!94))

(check-sat)
(exit)
