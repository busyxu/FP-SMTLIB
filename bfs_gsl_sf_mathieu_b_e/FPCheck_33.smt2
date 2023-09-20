(declare-fun n_ack!143 () (_ BitVec 32))
(declare-fun a_ack!144 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (= #x00000000 (bvsrem n_ack!143 #x00000002))))
(assert (not (= #x00000000 n_ack!143)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!144) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvslt n_ack!143 #x00000000))
(assert (fp.lt ((_ to_fp 11 53) a_ack!144) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (= #x00000000 (bvsrem (bvmul #xffffffff n_ack!143) #x00000002))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) a_ack!144))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvmul #xffffffff n_ack!143) #x00000000)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) a_ack!144))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvmul #xffffffff n_ack!143) #x00000000)))
(assert (not (= #x00000000 (bvmul #xffffffff n_ack!143))))
(assert (not (= #x00000001 (bvmul #xffffffff n_ack!143))))
(assert (not (= #x00000002 (bvmul #xffffffff n_ack!143))))
(assert (not (= #x00000003 (bvmul #xffffffff n_ack!143))))
(assert (not (bvslt (bvmul #xffffffff n_ack!143) #x00000046)))
(assert (FPCHECK_FADD_UNDERFLOW
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvmul (bvmul #xffffffff n_ack!143) (bvmul #xffffffff n_ack!143)))
  #x3f50624dd2f1a9fc))

(check-sat)
(exit)
