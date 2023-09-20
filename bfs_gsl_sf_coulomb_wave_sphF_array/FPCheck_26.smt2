(declare-fun d_ack!192 () (_ BitVec 64))
(declare-fun a_ack!194 () (_ BitVec 64))
(declare-fun b_ack!191 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun c_ack!193 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!192) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!194) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!192) ((_ to_fp 11 53) #x0024000000000001))))
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!192) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) #x3ff0000000000000)
        (fp.mul roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) d_ack!192))
                ((_ to_fp 11 53) #x0010000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!192) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!194)
                     ((_ to_fp 11 53) roundNearestTiesToEven b_ack!191))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (let ((a!1 (fp.leq (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!194)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!191))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbfe0000000000000))))
  (not a!1)))
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!192) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!192) ((_ to_fp 11 53) #x3ff3333333333333))))
(assert (FPCHECK_FMUL_UNDERFLOW #x4000000000000000 c_ack!193))

(check-sat)
(exit)
