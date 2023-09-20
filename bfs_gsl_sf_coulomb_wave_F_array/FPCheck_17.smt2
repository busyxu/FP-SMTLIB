(declare-fun d_ack!88 () (_ BitVec 64))
(declare-fun b_ack!87 () (_ BitVec 32))
(declare-fun a_ack!90 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun c_ack!89 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!88) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!88) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!90)
                     ((_ to_fp 11 53) roundNearestTiesToEven b_ack!87))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (let ((a!1 (fp.leq (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!90)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!87))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbfe0000000000000))))
  (not a!1)))
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!88) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!88) ((_ to_fp 11 53) #x3ff3333333333333)))
(assert (FPCHECK_FMUL_UNDERFLOW #x401921fb54442d18 c_ack!89))

(check-sat)
(exit)
