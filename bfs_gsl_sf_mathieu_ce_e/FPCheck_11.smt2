(declare-fun n_ack!65 () (_ BitVec 32))
(declare-fun a_ack!66 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (= #x00000000 (bvsrem n_ack!65 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!66) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!65 #x00000000)))
(assert (= #x00000000 (bvsrem n_ack!65 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!66) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!65 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!66) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!65 #x00000000)))
(assert (= #x00000000 n_ack!65))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!66) ((_ to_fp 11 53) #x4010000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvadd #x00000001 (bvmul #x00000002 n_ack!65)))
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvadd #x00000001 (bvmul #x00000002 n_ack!65)))))

(check-sat)
(exit)
