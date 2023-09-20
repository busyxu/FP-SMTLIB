(declare-fun x1_ack!97 () (_ BitVec 64))
(declare-fun x0_ack!99 () (_ BitVec 64))
(declare-fun x2_ack!98 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!99) ((_ to_fp 11 53) x1_ack!97)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!97) ((_ to_fp 11 53) x2_ack!98)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!97)
                       ((_ to_fp 11 53) x0_ack!99))
               ((_ to_fp 11 53) x0_ack!99))
       ((_ to_fp 11 53) x1_ack!97)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!97)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!97)
                       ((_ to_fp 11 53) x0_ack!99)))
       ((_ to_fp 11 53) x0_ack!99)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!98)
                       ((_ to_fp 11 53) x1_ack!97))
               ((_ to_fp 11 53) x1_ack!97))
       ((_ to_fp 11 53) x2_ack!98)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!98)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!98)
                       ((_ to_fp 11 53) x1_ack!97)))
       ((_ to_fp 11 53) x1_ack!97)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!97)
                    ((_ to_fp 11 53) x0_ack!99))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!97)
          ((_ to_fp 11 53) x0_ack!99))))

(check-sat)
(exit)
