(declare-fun q_ack!450 () (_ BitVec 64))
(declare-fun j_ack!451 () (_ BitVec 32))
(declare-fun n_ack!449 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!450) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!451 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!451)))
(assert (= #x00000000 (bvsrem n_ack!449 #x00000002)))
(assert (= #x00000000 (bvsrem n_ack!449 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) q_ack!450) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!449 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) q_ack!450) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!449 #x00000000)))
(assert (= #x00000000 n_ack!449))
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!450) ((_ to_fp 11 53) #x4010000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fd0000000000000
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvadd #x00000001 (bvmul #x00000002 n_ack!449)))))

(check-sat)
(exit)
