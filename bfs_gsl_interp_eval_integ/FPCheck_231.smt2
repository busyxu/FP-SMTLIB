(declare-fun x1_ack!2763 () (_ BitVec 64))
(declare-fun x0_ack!2767 () (_ BitVec 64))
(declare-fun x2_ack!2764 () (_ BitVec 64))
(declare-fun b_ack!2766 () (_ BitVec 64))
(declare-fun a_ack!2765 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2767) ((_ to_fp 11 53) x1_ack!2763)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2763) ((_ to_fp 11 53) x2_ack!2764)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2763)
                       ((_ to_fp 11 53) x0_ack!2767))
               ((_ to_fp 11 53) x0_ack!2767))
       ((_ to_fp 11 53) x1_ack!2763)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2763)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2763)
                       ((_ to_fp 11 53) x0_ack!2767)))
       ((_ to_fp 11 53) x0_ack!2767)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2764)
                       ((_ to_fp 11 53) x1_ack!2763))
               ((_ to_fp 11 53) x1_ack!2763))
       ((_ to_fp 11 53) x2_ack!2764)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2764)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2764)
                       ((_ to_fp 11 53) x1_ack!2763)))
       ((_ to_fp 11 53) x1_ack!2763)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2763)
                    ((_ to_fp 11 53) x0_ack!2767))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2764)
                    ((_ to_fp 11 53) x1_ack!2763))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2765) ((_ to_fp 11 53) b_ack!2766))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2765) ((_ to_fp 11 53) x0_ack!2767))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2766) ((_ to_fp 11 53) x2_ack!2764))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2765) ((_ to_fp 11 53) b_ack!2766))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2765) ((_ to_fp 11 53) x0_ack!2767))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2765) ((_ to_fp 11 53) x1_ack!2763)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2763) ((_ to_fp 11 53) a_ack!2765))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2766) ((_ to_fp 11 53) x1_ack!2763))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2766) ((_ to_fp 11 53) x2_ack!2764))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2764)
                    ((_ to_fp 11 53) x1_ack!2763))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!2765)
                  ((_ to_fp 11 53) x1_ack!2763))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!2765)
                  ((_ to_fp 11 53) x1_ack!2763)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!2766)
                  ((_ to_fp 11 53) x1_ack!2763))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!2766)
                  ((_ to_fp 11 53) x1_ack!2763)))))

(check-sat)
(exit)
