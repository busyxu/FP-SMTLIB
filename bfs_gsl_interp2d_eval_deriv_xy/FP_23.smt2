(declare-fun x1_ack!702 () (_ BitVec 64))
(declare-fun x0_ack!706 () (_ BitVec 64))
(declare-fun y0_ack!703 () (_ BitVec 64))
(declare-fun x_ack!704 () (_ BitVec 64))
(declare-fun y_ack!705 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!706) ((_ to_fp 11 53) x1_ack!702))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!703) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!704) ((_ to_fp 11 53) x0_ack!706))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!704) ((_ to_fp 11 53) x1_ack!702))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!705) ((_ to_fp 11 53) y0_ack!703))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!705) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!704) ((_ to_fp 11 53) x0_ack!706))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!704) ((_ to_fp 11 53) x1_ack!702))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!705) ((_ to_fp 11 53) y0_ack!703))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!705) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!702)
                       ((_ to_fp 11 53) x0_ack!706))
               ((_ to_fp 11 53) x0_ack!706))
       ((_ to_fp 11 53) x1_ack!702)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!702)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!702)
                       ((_ to_fp 11 53) x0_ack!706)))
       ((_ to_fp 11 53) x0_ack!706)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!703))
               ((_ to_fp 11 53) y0_ack!703))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!703)))
       ((_ to_fp 11 53) y0_ack!703)))

(check-sat)
(exit)
