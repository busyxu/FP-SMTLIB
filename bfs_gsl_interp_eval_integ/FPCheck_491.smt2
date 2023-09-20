(declare-fun x1_ack!6170 () (_ BitVec 64))
(declare-fun x0_ack!6174 () (_ BitVec 64))
(declare-fun x2_ack!6171 () (_ BitVec 64))
(declare-fun b_ack!6173 () (_ BitVec 64))
(declare-fun a_ack!6172 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6174) ((_ to_fp 11 53) x1_ack!6170)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6170) ((_ to_fp 11 53) x2_ack!6171)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6170)
                       ((_ to_fp 11 53) x0_ack!6174))
               ((_ to_fp 11 53) x0_ack!6174))
       ((_ to_fp 11 53) x1_ack!6170)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6170)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6170)
                       ((_ to_fp 11 53) x0_ack!6174)))
       ((_ to_fp 11 53) x0_ack!6174)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6171)
                       ((_ to_fp 11 53) x1_ack!6170))
               ((_ to_fp 11 53) x1_ack!6170))
       ((_ to_fp 11 53) x2_ack!6171)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6171)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6171)
                       ((_ to_fp 11 53) x1_ack!6170)))
       ((_ to_fp 11 53) x1_ack!6170)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6170)
                    ((_ to_fp 11 53) x0_ack!6174))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6171)
                    ((_ to_fp 11 53) x1_ack!6170))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6172) ((_ to_fp 11 53) b_ack!6173))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6172) ((_ to_fp 11 53) x0_ack!6174))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6173) ((_ to_fp 11 53) x2_ack!6171))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6172) ((_ to_fp 11 53) b_ack!6173))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6172) ((_ to_fp 11 53) x0_ack!6174))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6172) ((_ to_fp 11 53) x1_ack!6170))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6173) ((_ to_fp 11 53) x0_ack!6174))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6173) ((_ to_fp 11 53) x1_ack!6170)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6170) ((_ to_fp 11 53) b_ack!6173))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6170)
                    ((_ to_fp 11 53) x0_ack!6174))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!6170)
          ((_ to_fp 11 53) x0_ack!6174))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!6170)
          ((_ to_fp 11 53) x0_ack!6174))))

(check-sat)
(exit)
