(declare-fun l0_ack!29 () (_ BitVec 64))
(declare-fun u0_ack!27 () (_ BitVec 64))
(declare-fun l1_ack!26 () (_ BitVec 64))
(declare-fun u1_ack!28 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) u0_ack!27) ((_ to_fp 11 53) l0_ack!29))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) u0_ack!27)
                       ((_ to_fp 11 53) l0_ack!29))
               ((_ to_fp 11 53) l0_ack!29))
       ((_ to_fp 11 53) u0_ack!27)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) u0_ack!27)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) u0_ack!27)
                       ((_ to_fp 11 53) l0_ack!29)))
       ((_ to_fp 11 53) l0_ack!29)))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) u0_ack!27)
                    ((_ to_fp 11 53) l0_ack!29))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (not (fp.leq ((_ to_fp 11 53) u1_ack!28) ((_ to_fp 11 53) l1_ack!26))))
(assert (FPCHECK_FSUB_UNDERFLOW u1_ack!28 l1_ack!26))

(check-sat)
(exit)
