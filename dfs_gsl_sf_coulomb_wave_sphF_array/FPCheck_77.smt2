(declare-fun d_ack!582 () (_ BitVec 64))
(declare-fun a_ack!584 () (_ BitVec 64))
(declare-fun b_ack!581 () (_ BitVec 32))
(declare-fun c_ack!583 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!582) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!584) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!582) ((_ to_fp 11 53) #x0024000000000001))))
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!582) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) #x3ff0000000000000)
        (fp.mul roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) d_ack!582))
                ((_ to_fp 11 53) #x0010000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!582) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!584)
                     ((_ to_fp 11 53) roundNearestTiesToEven b_ack!581))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (let ((a!1 (fp.leq (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!584)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!581))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbfe0000000000000))))
  (not a!1)))
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!582) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!582) ((_ to_fp 11 53) #x3ff3333333333333)))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) c_ack!583))
            ((_ to_fp 11 53) #x4083ec744754dd24))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) c_ack!583))
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) c_ack!583)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!583))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) c_ack!583))
               ((_ to_fp 11 53) c_ack!583))
       ((_ to_fp 11 53) #x4000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) d_ack!582)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4000000000000000)
               ((_ to_fp 11 53) c_ack!583))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!584)
          ((_ to_fp 11 53) roundNearestTiesToEven b_ack!581))
  #x3ff0000000000000))

(check-sat)
(exit)
