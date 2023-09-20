(declare-fun q_ack!716 () (_ BitVec 64))
(declare-fun j_ack!717 () (_ BitVec 32))
(declare-fun n_ack!715 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!716) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!717 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!717)))
(assert (not (= #x00000000 n_ack!715)))
(assert (not (= #x00000000 (bvsrem n_ack!715 #x00000002))))
(assert (not (= #x00000000 (bvsrem n_ack!715 #x00000002))))
(assert (not (= #x00000000 n_ack!715)))
(assert (not (fp.eq ((_ to_fp 11 53) q_ack!716) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!715 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) q_ack!716) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!715 #x00000001)))
(assert (= #x00000001 n_ack!715))
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!716) ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvmul #x00000002 (bvadd #xffffffff n_ack!715))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.mul roundNearestTiesToEven a!1 a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x404f800000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4093b00000000000)
                           a!2))))
  (FPCHECK_FADD_OVERFLOW
    a!3
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x40a6fe0000000000)
            (fp.mul roundNearestTiesToEven a!1 a!1)))))))

(check-sat)
(exit)
