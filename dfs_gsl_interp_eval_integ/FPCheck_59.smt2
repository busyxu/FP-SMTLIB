(declare-fun x1_ack!547 () (_ BitVec 64))
(declare-fun x0_ack!553 () (_ BitVec 64))
(declare-fun x2_ack!548 () (_ BitVec 64))
(declare-fun b_ack!552 () (_ BitVec 64))
(declare-fun a_ack!551 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!549 () (_ BitVec 64))
(declare-fun y1_ack!550 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!553) ((_ to_fp 11 53) x1_ack!547)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!547) ((_ to_fp 11 53) x2_ack!548)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!547)
                       ((_ to_fp 11 53) x0_ack!553))
               ((_ to_fp 11 53) x0_ack!553))
       ((_ to_fp 11 53) x1_ack!547)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!547)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!547)
                       ((_ to_fp 11 53) x0_ack!553)))
       ((_ to_fp 11 53) x0_ack!553)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!548)
                       ((_ to_fp 11 53) x1_ack!547))
               ((_ to_fp 11 53) x1_ack!547))
       ((_ to_fp 11 53) x2_ack!548)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!548)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!548)
                       ((_ to_fp 11 53) x1_ack!547)))
       ((_ to_fp 11 53) x1_ack!547)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!547)
                    ((_ to_fp 11 53) x0_ack!553))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!548)
                    ((_ to_fp 11 53) x1_ack!547))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!551) ((_ to_fp 11 53) b_ack!552))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!551) ((_ to_fp 11 53) x0_ack!553))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!552) ((_ to_fp 11 53) x2_ack!548))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!551) ((_ to_fp 11 53) b_ack!552))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!551) ((_ to_fp 11 53) x0_ack!553))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!551) ((_ to_fp 11 53) x1_ack!547))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!552) ((_ to_fp 11 53) x0_ack!553))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!552) ((_ to_fp 11 53) x1_ack!547)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!547) ((_ to_fp 11 53) b_ack!552))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!547)
                    ((_ to_fp 11 53) x0_ack!553))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!550)
          ((_ to_fp 11 53) y0_ack!549))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!547)
          ((_ to_fp 11 53) x0_ack!553))))

(check-sat)
(exit)
