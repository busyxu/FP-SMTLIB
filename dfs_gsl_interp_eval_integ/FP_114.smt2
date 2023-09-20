(declare-fun x1_ack!6944 () (_ BitVec 64))
(declare-fun x0_ack!6948 () (_ BitVec 64))
(declare-fun x2_ack!6945 () (_ BitVec 64))
(declare-fun b_ack!6947 () (_ BitVec 64))
(declare-fun a_ack!6946 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6948) ((_ to_fp 11 53) x1_ack!6944)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6944) ((_ to_fp 11 53) x2_ack!6945)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6944)
                       ((_ to_fp 11 53) x0_ack!6948))
               ((_ to_fp 11 53) x0_ack!6948))
       ((_ to_fp 11 53) x1_ack!6944)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6944)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6944)
                       ((_ to_fp 11 53) x0_ack!6948)))
       ((_ to_fp 11 53) x0_ack!6948)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6945)
                       ((_ to_fp 11 53) x1_ack!6944))
               ((_ to_fp 11 53) x1_ack!6944))
       ((_ to_fp 11 53) x2_ack!6945)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6945)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6945)
                       ((_ to_fp 11 53) x1_ack!6944)))
       ((_ to_fp 11 53) x1_ack!6944)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6944)
                    ((_ to_fp 11 53) x0_ack!6948))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6945)
                    ((_ to_fp 11 53) x1_ack!6944))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6946) ((_ to_fp 11 53) b_ack!6947))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6946) ((_ to_fp 11 53) x0_ack!6948))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6947) ((_ to_fp 11 53) x2_ack!6945))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6946) ((_ to_fp 11 53) b_ack!6947))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6946) ((_ to_fp 11 53) x0_ack!6948))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6946) ((_ to_fp 11 53) x1_ack!6944)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6944) ((_ to_fp 11 53) a_ack!6946))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6947) ((_ to_fp 11 53) x1_ack!6944))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6947) ((_ to_fp 11 53) x2_ack!6945))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6945)
                    ((_ to_fp 11 53) x1_ack!6944))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
