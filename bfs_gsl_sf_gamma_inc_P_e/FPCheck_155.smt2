(declare-fun a_ack!448 () (_ BitVec 64))
(declare-fun b_ack!447 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!448) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!447) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!447) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!447) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!447)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!448)))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!448) ((_ to_fp 11 53) #x412e848000000000)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!447)
                                  ((_ to_fp 11 53) a_ack!448))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!447)
                                  ((_ to_fp 11 53) a_ack!448)))
                  ((_ to_fp 11 53) a_ack!448))))
  (not a!1)))
(assert (fp.leq ((_ to_fp 11 53) a_ack!448) ((_ to_fp 11 53) b_ack!447)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!448)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fc999999999999a)
               ((_ to_fp 11 53) b_ack!447))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!448) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!447)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!448)))))
(assert (FPCHECK_FSUB_OVERFLOW b_ack!447 a_ack!448))

(check-sat)
(exit)
