(declare-fun x1_ack!912 () (_ BitVec 64))
(declare-fun x0_ack!916 () (_ BitVec 64))
(declare-fun x2_ack!913 () (_ BitVec 64))
(declare-fun b_ack!915 () (_ BitVec 64))
(declare-fun a_ack!914 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!916) ((_ to_fp 11 53) x1_ack!912)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!912) ((_ to_fp 11 53) x2_ack!913)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!912)
                       ((_ to_fp 11 53) x0_ack!916))
               ((_ to_fp 11 53) x0_ack!916))
       ((_ to_fp 11 53) x1_ack!912)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!912)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!912)
                       ((_ to_fp 11 53) x0_ack!916)))
       ((_ to_fp 11 53) x0_ack!916)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!913)
                       ((_ to_fp 11 53) x1_ack!912))
               ((_ to_fp 11 53) x1_ack!912))
       ((_ to_fp 11 53) x2_ack!913)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!913)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!913)
                       ((_ to_fp 11 53) x1_ack!912)))
       ((_ to_fp 11 53) x1_ack!912)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!912)
                    ((_ to_fp 11 53) x0_ack!916))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!913)
                    ((_ to_fp 11 53) x1_ack!912))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!914) ((_ to_fp 11 53) b_ack!915))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!914) ((_ to_fp 11 53) x0_ack!916))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!915) ((_ to_fp 11 53) x2_ack!913))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!914) ((_ to_fp 11 53) b_ack!915))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!914) ((_ to_fp 11 53) x0_ack!916))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!914) ((_ to_fp 11 53) x1_ack!912))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!915) ((_ to_fp 11 53) x0_ack!916)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!912)
                    ((_ to_fp 11 53) x0_ack!916))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
