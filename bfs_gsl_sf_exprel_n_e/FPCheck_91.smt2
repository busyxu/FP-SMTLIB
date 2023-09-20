(declare-fun a_ack!304 () (_ BitVec 32))
(declare-fun b_ack!303 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!304 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!303) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!303))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ed965fea53d6e41)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!304)))))
(assert (not (= #x00000000 a_ack!304)))
(assert (not (= #x00000001 a_ack!304)))
(assert (= #x00000002 a_ack!304))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!303) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!303) ((_ to_fp 11 53) #xbf60624dd2f1a9fc)))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.sub roundNearestTiesToEven
          (CF_exp b_ack!303)
          ((_ to_fp 11 53) #x3ff0000000000000))
  b_ack!303))

(check-sat)
(exit)
