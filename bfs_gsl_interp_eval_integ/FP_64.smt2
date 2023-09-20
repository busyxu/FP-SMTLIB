(declare-fun x1_ack!3383 () (_ BitVec 64))
(declare-fun x0_ack!3387 () (_ BitVec 64))
(declare-fun x2_ack!3384 () (_ BitVec 64))
(declare-fun b_ack!3386 () (_ BitVec 64))
(declare-fun a_ack!3385 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3387) ((_ to_fp 11 53) x1_ack!3383)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3383) ((_ to_fp 11 53) x2_ack!3384)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3383)
                       ((_ to_fp 11 53) x0_ack!3387))
               ((_ to_fp 11 53) x0_ack!3387))
       ((_ to_fp 11 53) x1_ack!3383)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3383)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3383)
                       ((_ to_fp 11 53) x0_ack!3387)))
       ((_ to_fp 11 53) x0_ack!3387)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3384)
                       ((_ to_fp 11 53) x1_ack!3383))
               ((_ to_fp 11 53) x1_ack!3383))
       ((_ to_fp 11 53) x2_ack!3384)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3384)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3384)
                       ((_ to_fp 11 53) x1_ack!3383)))
       ((_ to_fp 11 53) x1_ack!3383)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3383)
                    ((_ to_fp 11 53) x0_ack!3387))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3384)
                    ((_ to_fp 11 53) x1_ack!3383))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3385) ((_ to_fp 11 53) b_ack!3386))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3385) ((_ to_fp 11 53) x0_ack!3387))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3386) ((_ to_fp 11 53) x2_ack!3384))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3385) ((_ to_fp 11 53) b_ack!3386))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3385) ((_ to_fp 11 53) x0_ack!3387))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3385) ((_ to_fp 11 53) x1_ack!3383)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3383) ((_ to_fp 11 53) a_ack!3385))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3386) ((_ to_fp 11 53) x1_ack!3383))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3386) ((_ to_fp 11 53) x2_ack!3384))))
(assert (let ((a!1 (not (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) x2_ack!3384)
                               ((_ to_fp 11 53) x1_ack!3383))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))

(check-sat)
(exit)
