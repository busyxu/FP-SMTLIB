(declare-fun x1_ack!891 () (_ BitVec 64))
(declare-fun x0_ack!895 () (_ BitVec 64))
(declare-fun y0_ack!892 () (_ BitVec 64))
(declare-fun x_ack!893 () (_ BitVec 64))
(declare-fun y_ack!894 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!895) ((_ to_fp 11 53) x1_ack!891))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!892) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!893) ((_ to_fp 11 53) x0_ack!895))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!893) ((_ to_fp 11 53) x1_ack!891))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!894) ((_ to_fp 11 53) y0_ack!892))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!894) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!893) ((_ to_fp 11 53) x0_ack!895))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!893) ((_ to_fp 11 53) x1_ack!891)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!894) ((_ to_fp 11 53) y0_ack!892))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!894) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!891)
                       ((_ to_fp 11 53) x0_ack!895))
               ((_ to_fp 11 53) x0_ack!895))
       ((_ to_fp 11 53) x1_ack!891)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!891)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!891)
                       ((_ to_fp 11 53) x0_ack!895)))
       ((_ to_fp 11 53) x0_ack!895)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!892))
               ((_ to_fp 11 53) y0_ack!892))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!892)))
       ((_ to_fp 11 53) y0_ack!892)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!891)
               ((_ to_fp 11 53) x0_ack!895))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
