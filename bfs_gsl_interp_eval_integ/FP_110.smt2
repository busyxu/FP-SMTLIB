(declare-fun x1_ack!6150 () (_ BitVec 64))
(declare-fun x0_ack!6154 () (_ BitVec 64))
(declare-fun x2_ack!6151 () (_ BitVec 64))
(declare-fun b_ack!6153 () (_ BitVec 64))
(declare-fun a_ack!6152 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6154) ((_ to_fp 11 53) x1_ack!6150)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6150) ((_ to_fp 11 53) x2_ack!6151)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6150)
                       ((_ to_fp 11 53) x0_ack!6154))
               ((_ to_fp 11 53) x0_ack!6154))
       ((_ to_fp 11 53) x1_ack!6150)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6150)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6150)
                       ((_ to_fp 11 53) x0_ack!6154)))
       ((_ to_fp 11 53) x0_ack!6154)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6151)
                       ((_ to_fp 11 53) x1_ack!6150))
               ((_ to_fp 11 53) x1_ack!6150))
       ((_ to_fp 11 53) x2_ack!6151)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6151)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6151)
                       ((_ to_fp 11 53) x1_ack!6150)))
       ((_ to_fp 11 53) x1_ack!6150)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6150)
                    ((_ to_fp 11 53) x0_ack!6154))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6151)
                    ((_ to_fp 11 53) x1_ack!6150))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6152) ((_ to_fp 11 53) b_ack!6153))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6152) ((_ to_fp 11 53) x0_ack!6154))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6153) ((_ to_fp 11 53) x2_ack!6151))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6152) ((_ to_fp 11 53) b_ack!6153))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6152) ((_ to_fp 11 53) x0_ack!6154))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6152) ((_ to_fp 11 53) x1_ack!6150))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6153) ((_ to_fp 11 53) x0_ack!6154))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6153) ((_ to_fp 11 53) x1_ack!6150)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6150) ((_ to_fp 11 53) b_ack!6153))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6150)
                    ((_ to_fp 11 53) x0_ack!6154))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
