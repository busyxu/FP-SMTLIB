(declare-fun a_ack!1993 () (_ BitVec 32))
(declare-fun b_ack!1991 () (_ BitVec 32))
(declare-fun c_ack!1992 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!1993 #x00000000)))
(assert (not (bvslt b_ack!1991 a_ack!1993)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1992) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1993 #x00000000)))
(assert (not (= #x00000000 a_ack!1993)))
(assert (not (= #x00000001 a_ack!1993)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1992) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1992) ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ed965fea53d6e41)
                          ((_ to_fp 11 53) c_ack!1992))
                  (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvmul a_ack!1993 a_ack!1993))
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!1)))
(assert (bvslt #x00000032 a_ack!1993))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1992) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1993)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1993)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1993))
                   ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1993))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!1 a!1)
                    a!1)
            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1993))
    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1993))))

(check-sat)
(exit)
