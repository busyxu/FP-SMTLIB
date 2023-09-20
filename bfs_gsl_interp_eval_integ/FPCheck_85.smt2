(declare-fun x1_ack!932 () (_ BitVec 64))
(declare-fun x0_ack!936 () (_ BitVec 64))
(declare-fun x2_ack!933 () (_ BitVec 64))
(declare-fun b_ack!935 () (_ BitVec 64))
(declare-fun a_ack!934 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!936) ((_ to_fp 11 53) x1_ack!932)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!932) ((_ to_fp 11 53) x2_ack!933)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!932)
                       ((_ to_fp 11 53) x0_ack!936))
               ((_ to_fp 11 53) x0_ack!936))
       ((_ to_fp 11 53) x1_ack!932)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!932)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!932)
                       ((_ to_fp 11 53) x0_ack!936)))
       ((_ to_fp 11 53) x0_ack!936)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!933)
                       ((_ to_fp 11 53) x1_ack!932))
               ((_ to_fp 11 53) x1_ack!932))
       ((_ to_fp 11 53) x2_ack!933)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!933)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!933)
                       ((_ to_fp 11 53) x1_ack!932)))
       ((_ to_fp 11 53) x1_ack!932)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!932)
                    ((_ to_fp 11 53) x0_ack!936))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!933)
                    ((_ to_fp 11 53) x1_ack!932))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!934) ((_ to_fp 11 53) b_ack!935))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!934) ((_ to_fp 11 53) x0_ack!936))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!935) ((_ to_fp 11 53) x2_ack!933))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!934) ((_ to_fp 11 53) b_ack!935))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!934) ((_ to_fp 11 53) x0_ack!936))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!934) ((_ to_fp 11 53) x1_ack!932))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!935) ((_ to_fp 11 53) x0_ack!936)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!932)
                    ((_ to_fp 11 53) x0_ack!936))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY a_ack!934 x0_ack!936))

(check-sat)
(exit)
