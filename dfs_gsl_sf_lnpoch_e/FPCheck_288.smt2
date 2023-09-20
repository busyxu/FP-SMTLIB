(declare-fun a_ack!1019 () (_ BitVec 64))
(declare-fun b_ack!1018 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1019) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!1019)
                     ((_ to_fp 11 53) b_ack!1018))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1018) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!1018))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!1019))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1019) ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1019)
                       ((_ to_fp 11 53) b_ack!1018))
               ((_ to_fp 11 53) a_ack!1019))
       ((_ to_fp 11 53) b_ack!1018)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1019)
                       ((_ to_fp 11 53) b_ack!1018))
               ((_ to_fp 11 53) b_ack!1018))
       ((_ to_fp 11 53) a_ack!1019)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!1019)
               ((_ to_fp 11 53) b_ack!1018))
       ((_ to_fp 11 53) #x4065600000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1019) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1019) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!1019) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FADD_OVERFLOW a_ack!1019 b_ack!1018))

(check-sat)
(exit)
