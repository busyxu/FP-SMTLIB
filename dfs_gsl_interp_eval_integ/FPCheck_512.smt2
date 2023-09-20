(declare-fun x1_ack!6406 () (_ BitVec 64))
(declare-fun x0_ack!6410 () (_ BitVec 64))
(declare-fun x2_ack!6407 () (_ BitVec 64))
(declare-fun b_ack!6409 () (_ BitVec 64))
(declare-fun a_ack!6408 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6410) ((_ to_fp 11 53) x1_ack!6406)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6406) ((_ to_fp 11 53) x2_ack!6407)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6406)
                       ((_ to_fp 11 53) x0_ack!6410))
               ((_ to_fp 11 53) x0_ack!6410))
       ((_ to_fp 11 53) x1_ack!6406)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6406)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6406)
                       ((_ to_fp 11 53) x0_ack!6410)))
       ((_ to_fp 11 53) x0_ack!6410)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6407)
                       ((_ to_fp 11 53) x1_ack!6406))
               ((_ to_fp 11 53) x1_ack!6406))
       ((_ to_fp 11 53) x2_ack!6407)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6407)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6407)
                       ((_ to_fp 11 53) x1_ack!6406)))
       ((_ to_fp 11 53) x1_ack!6406)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6406)
                    ((_ to_fp 11 53) x0_ack!6410))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6407)
                    ((_ to_fp 11 53) x1_ack!6406))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6408) ((_ to_fp 11 53) b_ack!6409))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6408) ((_ to_fp 11 53) x0_ack!6410))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6409) ((_ to_fp 11 53) x2_ack!6407))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6408) ((_ to_fp 11 53) b_ack!6409))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6408) ((_ to_fp 11 53) x0_ack!6410))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6408) ((_ to_fp 11 53) x1_ack!6406)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6406) ((_ to_fp 11 53) a_ack!6408))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6409) ((_ to_fp 11 53) x1_ack!6406))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6409) ((_ to_fp 11 53) x2_ack!6407))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6407)
                    ((_ to_fp 11 53) x1_ack!6406))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!6408)
          ((_ to_fp 11 53) x1_ack!6406))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!6409)
          ((_ to_fp 11 53) x1_ack!6406))))

(check-sat)
(exit)
