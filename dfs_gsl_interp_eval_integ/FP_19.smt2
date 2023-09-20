(declare-fun x1_ack!423 () (_ BitVec 64))
(declare-fun x0_ack!427 () (_ BitVec 64))
(declare-fun x2_ack!424 () (_ BitVec 64))
(declare-fun b_ack!426 () (_ BitVec 64))
(declare-fun a_ack!425 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!427) ((_ to_fp 11 53) x1_ack!423)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!423) ((_ to_fp 11 53) x2_ack!424)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!423)
                       ((_ to_fp 11 53) x0_ack!427))
               ((_ to_fp 11 53) x0_ack!427))
       ((_ to_fp 11 53) x1_ack!423)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!423)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!423)
                       ((_ to_fp 11 53) x0_ack!427)))
       ((_ to_fp 11 53) x0_ack!427)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!424)
                       ((_ to_fp 11 53) x1_ack!423))
               ((_ to_fp 11 53) x1_ack!423))
       ((_ to_fp 11 53) x2_ack!424)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!424)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!424)
                       ((_ to_fp 11 53) x1_ack!423)))
       ((_ to_fp 11 53) x1_ack!423)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!423)
                    ((_ to_fp 11 53) x0_ack!427))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!424)
                    ((_ to_fp 11 53) x1_ack!423))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!425) ((_ to_fp 11 53) b_ack!426))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!425) ((_ to_fp 11 53) x0_ack!427))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!426) ((_ to_fp 11 53) x2_ack!424))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!425) ((_ to_fp 11 53) b_ack!426))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!425) ((_ to_fp 11 53) x0_ack!427))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!425) ((_ to_fp 11 53) x1_ack!423))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!426) ((_ to_fp 11 53) x0_ack!427))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!426) ((_ to_fp 11 53) x1_ack!423)))

(check-sat)
(exit)
