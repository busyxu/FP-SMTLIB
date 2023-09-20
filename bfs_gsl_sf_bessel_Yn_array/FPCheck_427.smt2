(declare-fun a_ack!1837 () (_ BitVec 32))
(declare-fun b_ack!1835 () (_ BitVec 32))
(declare-fun c_ack!1836 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!1837 #x00000000)))
(assert (not (bvslt b_ack!1835 a_ack!1837)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1836) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1837 #x00000000)))
(assert (not (= #x00000000 a_ack!1837)))
(assert (not (= #x00000001 a_ack!1837)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1836) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1836) ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ed965fea53d6e41)
                          ((_ to_fp 11 53) c_ack!1836))
                  (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvmul a_ack!1837 a_ack!1837))
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!1)))
(assert (not (bvslt #x00000032 a_ack!1837)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1836) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1836) ((_ to_fp 11 53) #x001922d0e5604189))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1836) ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1836) ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1836) ((_ to_fp 11 53) #x4330000000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x4040000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!1836)
                  ((_ to_fp 11 53) c_ack!1836)))
  #x3ff0000000000000))

(check-sat)
(exit)
