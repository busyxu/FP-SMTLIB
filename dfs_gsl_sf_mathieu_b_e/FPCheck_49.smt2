(declare-fun n_ack!211 () (_ BitVec 32))
(declare-fun a_ack!212 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (= #x00000000 (bvsrem n_ack!211 #x00000002)))
(assert (not (= #x00000000 n_ack!211)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!212) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!211 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!212) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!211 #x00000001)))
(assert (not (= #x00000001 n_ack!211)))
(assert (not (= #x00000002 n_ack!211)))
(assert (not (= #x00000003 n_ack!211)))
(assert (bvslt n_ack!211 #x00000046))
(assert (FPCHECK_FMUL_ACCURACY
  #x3ffb333333333333
  ((_ to_fp 11 53) roundNearestTiesToEven n_ack!211)))

(check-sat)
(exit)
