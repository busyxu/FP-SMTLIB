(declare-fun x1_ack!6416 () (_ BitVec 64))
(declare-fun x0_ack!6420 () (_ BitVec 64))
(declare-fun x2_ack!6417 () (_ BitVec 64))
(declare-fun b_ack!6419 () (_ BitVec 64))
(declare-fun a_ack!6418 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6420) ((_ to_fp 11 53) x1_ack!6416)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6416) ((_ to_fp 11 53) x2_ack!6417)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6416)
                       ((_ to_fp 11 53) x0_ack!6420))
               ((_ to_fp 11 53) x0_ack!6420))
       ((_ to_fp 11 53) x1_ack!6416)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6416)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6416)
                       ((_ to_fp 11 53) x0_ack!6420)))
       ((_ to_fp 11 53) x0_ack!6420)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6417)
                       ((_ to_fp 11 53) x1_ack!6416))
               ((_ to_fp 11 53) x1_ack!6416))
       ((_ to_fp 11 53) x2_ack!6417)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6417)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6417)
                       ((_ to_fp 11 53) x1_ack!6416)))
       ((_ to_fp 11 53) x1_ack!6416)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6416)
                    ((_ to_fp 11 53) x0_ack!6420))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6417)
                    ((_ to_fp 11 53) x1_ack!6416))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6418) ((_ to_fp 11 53) b_ack!6419))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6418) ((_ to_fp 11 53) x0_ack!6420))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6419) ((_ to_fp 11 53) x2_ack!6417))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6418) ((_ to_fp 11 53) b_ack!6419))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6418) ((_ to_fp 11 53) x0_ack!6420))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6418) ((_ to_fp 11 53) x1_ack!6416)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6416) ((_ to_fp 11 53) a_ack!6418))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6419) ((_ to_fp 11 53) x1_ack!6416))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6419) ((_ to_fp 11 53) x2_ack!6417))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6417)
                    ((_ to_fp 11 53) x1_ack!6416))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!6418)
          ((_ to_fp 11 53) x1_ack!6416))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!6419)
          ((_ to_fp 11 53) x1_ack!6416))))

(check-sat)
(exit)
