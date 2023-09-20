(declare-fun x1_ack!892 () (_ BitVec 64))
(declare-fun x0_ack!896 () (_ BitVec 64))
(declare-fun x2_ack!893 () (_ BitVec 64))
(declare-fun b_ack!895 () (_ BitVec 64))
(declare-fun a_ack!894 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!896) ((_ to_fp 11 53) x1_ack!892)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!892) ((_ to_fp 11 53) x2_ack!893)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!892)
                       ((_ to_fp 11 53) x0_ack!896))
               ((_ to_fp 11 53) x0_ack!896))
       ((_ to_fp 11 53) x1_ack!892)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!892)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!892)
                       ((_ to_fp 11 53) x0_ack!896)))
       ((_ to_fp 11 53) x0_ack!896)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!893)
                       ((_ to_fp 11 53) x1_ack!892))
               ((_ to_fp 11 53) x1_ack!892))
       ((_ to_fp 11 53) x2_ack!893)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!893)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!893)
                       ((_ to_fp 11 53) x1_ack!892)))
       ((_ to_fp 11 53) x1_ack!892)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!892)
                    ((_ to_fp 11 53) x0_ack!896))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!893)
                    ((_ to_fp 11 53) x1_ack!892))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!894) ((_ to_fp 11 53) b_ack!895))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!894) ((_ to_fp 11 53) x0_ack!896))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!895) ((_ to_fp 11 53) x2_ack!893))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!894) ((_ to_fp 11 53) b_ack!895))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!894) ((_ to_fp 11 53) x0_ack!896))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!894) ((_ to_fp 11 53) x1_ack!892))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!895) ((_ to_fp 11 53) x0_ack!896))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!895) ((_ to_fp 11 53) x1_ack!892)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!892) ((_ to_fp 11 53) b_ack!895))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!892)
                    ((_ to_fp 11 53) x0_ack!896))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
