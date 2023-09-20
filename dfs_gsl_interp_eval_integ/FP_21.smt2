(declare-fun x1_ack!453 () (_ BitVec 64))
(declare-fun x0_ack!457 () (_ BitVec 64))
(declare-fun x2_ack!454 () (_ BitVec 64))
(declare-fun b_ack!456 () (_ BitVec 64))
(declare-fun a_ack!455 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!457) ((_ to_fp 11 53) x1_ack!453)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!453) ((_ to_fp 11 53) x2_ack!454)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!453)
                       ((_ to_fp 11 53) x0_ack!457))
               ((_ to_fp 11 53) x0_ack!457))
       ((_ to_fp 11 53) x1_ack!453)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!453)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!453)
                       ((_ to_fp 11 53) x0_ack!457)))
       ((_ to_fp 11 53) x0_ack!457)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!454)
                       ((_ to_fp 11 53) x1_ack!453))
               ((_ to_fp 11 53) x1_ack!453))
       ((_ to_fp 11 53) x2_ack!454)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!454)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!454)
                       ((_ to_fp 11 53) x1_ack!453)))
       ((_ to_fp 11 53) x1_ack!453)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!453)
                    ((_ to_fp 11 53) x0_ack!457))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!454)
                    ((_ to_fp 11 53) x1_ack!453))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!455) ((_ to_fp 11 53) b_ack!456))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!455) ((_ to_fp 11 53) x0_ack!457))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!456) ((_ to_fp 11 53) x2_ack!454))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!455) ((_ to_fp 11 53) b_ack!456))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!455) ((_ to_fp 11 53) x0_ack!457))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!455) ((_ to_fp 11 53) x1_ack!453))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!456) ((_ to_fp 11 53) x0_ack!457))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!456) ((_ to_fp 11 53) x1_ack!453)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!453) ((_ to_fp 11 53) b_ack!456))))

(check-sat)
(exit)
