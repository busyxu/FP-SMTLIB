(declare-fun a_ack!440 () (_ BitVec 64))
(declare-fun b_ack!439 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!440) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!439) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!439) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!439) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!439)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!440)))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!440) ((_ to_fp 11 53) #x412e848000000000)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!439)
                                  ((_ to_fp 11 53) a_ack!440))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!439)
                                  ((_ to_fp 11 53) a_ack!440)))
                  ((_ to_fp 11 53) a_ack!440))))
  (not a!1)))
(assert (fp.leq ((_ to_fp 11 53) a_ack!440) ((_ to_fp 11 53) b_ack!439)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!440)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fc999999999999a)
               ((_ to_fp 11 53) b_ack!439))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!440) ((_ to_fp 11 53) #x4024000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW #x3fe0000000000000 a_ack!440))

(check-sat)
(exit)
