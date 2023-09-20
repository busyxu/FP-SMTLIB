(declare-fun x1_ack!2501 () (_ BitVec 64))
(declare-fun x0_ack!2505 () (_ BitVec 64))
(declare-fun x2_ack!2502 () (_ BitVec 64))
(declare-fun b_ack!2504 () (_ BitVec 64))
(declare-fun a_ack!2503 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2505) ((_ to_fp 11 53) x1_ack!2501)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2501) ((_ to_fp 11 53) x2_ack!2502)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2501)
                       ((_ to_fp 11 53) x0_ack!2505))
               ((_ to_fp 11 53) x0_ack!2505))
       ((_ to_fp 11 53) x1_ack!2501)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2501)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2501)
                       ((_ to_fp 11 53) x0_ack!2505)))
       ((_ to_fp 11 53) x0_ack!2505)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2502)
                       ((_ to_fp 11 53) x1_ack!2501))
               ((_ to_fp 11 53) x1_ack!2501))
       ((_ to_fp 11 53) x2_ack!2502)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2502)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2502)
                       ((_ to_fp 11 53) x1_ack!2501)))
       ((_ to_fp 11 53) x1_ack!2501)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2501)
                    ((_ to_fp 11 53) x0_ack!2505))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2502)
                    ((_ to_fp 11 53) x1_ack!2501))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2503) ((_ to_fp 11 53) b_ack!2504))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2503) ((_ to_fp 11 53) x0_ack!2505))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2504) ((_ to_fp 11 53) x2_ack!2502))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2503) ((_ to_fp 11 53) b_ack!2504))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2503) ((_ to_fp 11 53) x0_ack!2505))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2503) ((_ to_fp 11 53) x1_ack!2501))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2504) ((_ to_fp 11 53) x0_ack!2505))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2504) ((_ to_fp 11 53) x1_ack!2501)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2501) ((_ to_fp 11 53) b_ack!2504))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2501)
                    ((_ to_fp 11 53) x0_ack!2505))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2502)
                    ((_ to_fp 11 53) x1_ack!2501))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2501)
                  ((_ to_fp 11 53) x1_ack!2501))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2501)
                  ((_ to_fp 11 53) x1_ack!2501)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!2504)
                  ((_ to_fp 11 53) x1_ack!2501))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!2504)
                  ((_ to_fp 11 53) x1_ack!2501)))))

(check-sat)
(exit)
