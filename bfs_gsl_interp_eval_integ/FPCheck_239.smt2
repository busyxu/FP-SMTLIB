(declare-fun x1_ack!2843 () (_ BitVec 64))
(declare-fun x0_ack!2847 () (_ BitVec 64))
(declare-fun x2_ack!2844 () (_ BitVec 64))
(declare-fun b_ack!2846 () (_ BitVec 64))
(declare-fun a_ack!2845 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2847) ((_ to_fp 11 53) x1_ack!2843)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2843) ((_ to_fp 11 53) x2_ack!2844)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2843)
                       ((_ to_fp 11 53) x0_ack!2847))
               ((_ to_fp 11 53) x0_ack!2847))
       ((_ to_fp 11 53) x1_ack!2843)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2843)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2843)
                       ((_ to_fp 11 53) x0_ack!2847)))
       ((_ to_fp 11 53) x0_ack!2847)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2844)
                       ((_ to_fp 11 53) x1_ack!2843))
               ((_ to_fp 11 53) x1_ack!2843))
       ((_ to_fp 11 53) x2_ack!2844)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2844)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2844)
                       ((_ to_fp 11 53) x1_ack!2843)))
       ((_ to_fp 11 53) x1_ack!2843)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2843)
                    ((_ to_fp 11 53) x0_ack!2847))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2844)
                    ((_ to_fp 11 53) x1_ack!2843))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2845) ((_ to_fp 11 53) b_ack!2846))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2845) ((_ to_fp 11 53) x0_ack!2847))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2846) ((_ to_fp 11 53) x2_ack!2844))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2845) ((_ to_fp 11 53) b_ack!2846))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2845) ((_ to_fp 11 53) x0_ack!2847))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2845) ((_ to_fp 11 53) x1_ack!2843)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2843) ((_ to_fp 11 53) a_ack!2845))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2846) ((_ to_fp 11 53) x1_ack!2843))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2846) ((_ to_fp 11 53) x2_ack!2844))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2844)
                    ((_ to_fp 11 53) x1_ack!2843))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2845)
                                   ((_ to_fp 11 53) x1_ack!2843))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2845)
                                   ((_ to_fp 11 53) x1_ack!2843)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2846)
                                   ((_ to_fp 11 53) x1_ack!2843))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2846)
                                   ((_ to_fp 11 53) x1_ack!2843))))))
  (FPCHECK_FADD_ACCURACY
    a!1
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2845)
                    ((_ to_fp 11 53) x1_ack!2843))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2846)
                    ((_ to_fp 11 53) x1_ack!2843))))))

(check-sat)
(exit)
