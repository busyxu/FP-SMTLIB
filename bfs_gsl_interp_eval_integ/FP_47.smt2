(declare-fun x1_ack!2068 () (_ BitVec 64))
(declare-fun x0_ack!2072 () (_ BitVec 64))
(declare-fun x2_ack!2069 () (_ BitVec 64))
(declare-fun b_ack!2071 () (_ BitVec 64))
(declare-fun a_ack!2070 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2072) ((_ to_fp 11 53) x1_ack!2068)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2068) ((_ to_fp 11 53) x2_ack!2069)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2068)
                       ((_ to_fp 11 53) x0_ack!2072))
               ((_ to_fp 11 53) x0_ack!2072))
       ((_ to_fp 11 53) x1_ack!2068)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2068)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2068)
                       ((_ to_fp 11 53) x0_ack!2072)))
       ((_ to_fp 11 53) x0_ack!2072)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2069)
                       ((_ to_fp 11 53) x1_ack!2068))
               ((_ to_fp 11 53) x1_ack!2068))
       ((_ to_fp 11 53) x2_ack!2069)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2069)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2069)
                       ((_ to_fp 11 53) x1_ack!2068)))
       ((_ to_fp 11 53) x1_ack!2068)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2068)
                    ((_ to_fp 11 53) x0_ack!2072))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2069)
                    ((_ to_fp 11 53) x1_ack!2068))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2070) ((_ to_fp 11 53) b_ack!2071))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2070) ((_ to_fp 11 53) x0_ack!2072))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2071) ((_ to_fp 11 53) x2_ack!2069))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2070) ((_ to_fp 11 53) b_ack!2071))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2070) ((_ to_fp 11 53) x0_ack!2072))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2070) ((_ to_fp 11 53) x1_ack!2068)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2068) ((_ to_fp 11 53) a_ack!2070))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2071) ((_ to_fp 11 53) x1_ack!2068))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2071) ((_ to_fp 11 53) x2_ack!2069))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2069)
                    ((_ to_fp 11 53) x1_ack!2068))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
