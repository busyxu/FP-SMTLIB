(declare-fun x1_ack!6670 () (_ BitVec 64))
(declare-fun x0_ack!6674 () (_ BitVec 64))
(declare-fun x2_ack!6671 () (_ BitVec 64))
(declare-fun b_ack!6673 () (_ BitVec 64))
(declare-fun a_ack!6672 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6674) ((_ to_fp 11 53) x1_ack!6670)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6670) ((_ to_fp 11 53) x2_ack!6671)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6670)
                       ((_ to_fp 11 53) x0_ack!6674))
               ((_ to_fp 11 53) x0_ack!6674))
       ((_ to_fp 11 53) x1_ack!6670)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6670)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6670)
                       ((_ to_fp 11 53) x0_ack!6674)))
       ((_ to_fp 11 53) x0_ack!6674)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6671)
                       ((_ to_fp 11 53) x1_ack!6670))
               ((_ to_fp 11 53) x1_ack!6670))
       ((_ to_fp 11 53) x2_ack!6671)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6671)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6671)
                       ((_ to_fp 11 53) x1_ack!6670)))
       ((_ to_fp 11 53) x1_ack!6670)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6670)
                    ((_ to_fp 11 53) x0_ack!6674))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6671)
                    ((_ to_fp 11 53) x1_ack!6670))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6672) ((_ to_fp 11 53) b_ack!6673))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6672) ((_ to_fp 11 53) x0_ack!6674))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6673) ((_ to_fp 11 53) x2_ack!6671))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6672) ((_ to_fp 11 53) b_ack!6673))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6672) ((_ to_fp 11 53) x0_ack!6674))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6672) ((_ to_fp 11 53) x1_ack!6670)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6670) ((_ to_fp 11 53) a_ack!6672))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6673) ((_ to_fp 11 53) x1_ack!6670))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6673) ((_ to_fp 11 53) x2_ack!6671))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6671)
                    ((_ to_fp 11 53) x1_ack!6670))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!6672)
                  ((_ to_fp 11 53) x1_ack!6670))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!6672)
                  ((_ to_fp 11 53) x1_ack!6670)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!6673)
                  ((_ to_fp 11 53) x1_ack!6670))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!6673)
                  ((_ to_fp 11 53) x1_ack!6670)))))

(check-sat)
(exit)
