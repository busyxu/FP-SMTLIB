(declare-fun a_ack!2549 () (_ BitVec 32))
(declare-fun b_ack!2547 () (_ BitVec 32))
(declare-fun c_ack!2548 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!2549 #x00000000)))
(assert (not (bvslt b_ack!2547 a_ack!2549)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2548) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!2549 #x00000000)))
(assert (not (= #x00000000 a_ack!2549)))
(assert (not (= #x00000001 a_ack!2549)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2548) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2548) ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ed965fea53d6e41)
                          ((_ to_fp 11 53) c_ack!2548))
                  (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvmul a_ack!2549 a_ack!2549))
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!1)))
(assert (bvslt #x00000032 a_ack!2549))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2548) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2549)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  c_ack!2548
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2549)))

(check-sat)
(exit)
