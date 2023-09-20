(declare-fun x1_ack!370 () (_ BitVec 64))
(declare-fun x0_ack!372 () (_ BitVec 64))
(declare-fun x2_ack!371 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!372) ((_ to_fp 11 53) x1_ack!370)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!370) ((_ to_fp 11 53) x2_ack!371)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!370)
                       ((_ to_fp 11 53) x0_ack!372))
               ((_ to_fp 11 53) x0_ack!372))
       ((_ to_fp 11 53) x1_ack!370)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!370)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!370)
                       ((_ to_fp 11 53) x0_ack!372)))
       ((_ to_fp 11 53) x0_ack!372)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!371)
                       ((_ to_fp 11 53) x1_ack!370))
               ((_ to_fp 11 53) x1_ack!370))
       ((_ to_fp 11 53) x2_ack!371)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!371)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!371)
                       ((_ to_fp 11 53) x1_ack!370)))
       ((_ to_fp 11 53) x1_ack!370)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!370)
                    ((_ to_fp 11 53) x0_ack!372))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (not (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) x2_ack!371)
                               ((_ to_fp 11 53) x1_ack!370))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))

(check-sat)
(exit)
