(declare-fun n_ack!81 () (_ BitVec 32))
(declare-fun a_ack!82 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (= #x00000000 (bvsrem n_ack!81 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!82) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!81 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!82) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!81 #x00000000)))
(assert (= #x00000000 n_ack!81))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!82) ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvmul #x00000002 n_ack!81)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (FPCHECK_FADD_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #xc000000000000000)
            ((_ to_fp 11 53) a_ack!82))
    a!1)))

(check-sat)
(exit)
