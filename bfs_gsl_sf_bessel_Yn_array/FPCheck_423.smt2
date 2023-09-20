(declare-fun a_ack!1813 () (_ BitVec 32))
(declare-fun b_ack!1811 () (_ BitVec 32))
(declare-fun c_ack!1812 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!1813 #x00000000)))
(assert (not (bvslt b_ack!1811 a_ack!1813)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1812) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1813 #x00000000)))
(assert (not (= #x00000000 a_ack!1813)))
(assert (not (= #x00000001 a_ack!1813)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1812) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1812) ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ed965fea53d6e41)
                          ((_ to_fp 11 53) c_ack!1812))
                  (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvmul a_ack!1813 a_ack!1813))
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!1)))
(assert (not (bvslt #x00000032 a_ack!1813)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1812) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1812) ((_ to_fp 11 53) #x001922d0e5604189))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1812) ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1812) ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1812) ((_ to_fp 11 53) #x4330000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  #x4040000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!1812)
          ((_ to_fp 11 53) c_ack!1812))))

(check-sat)
(exit)
