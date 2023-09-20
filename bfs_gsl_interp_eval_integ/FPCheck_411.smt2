(declare-fun x1_ack!5151 () (_ BitVec 64))
(declare-fun x0_ack!5155 () (_ BitVec 64))
(declare-fun x2_ack!5152 () (_ BitVec 64))
(declare-fun b_ack!5154 () (_ BitVec 64))
(declare-fun a_ack!5153 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5155) ((_ to_fp 11 53) x1_ack!5151)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5151) ((_ to_fp 11 53) x2_ack!5152)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5151)
                       ((_ to_fp 11 53) x0_ack!5155))
               ((_ to_fp 11 53) x0_ack!5155))
       ((_ to_fp 11 53) x1_ack!5151)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5151)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5151)
                       ((_ to_fp 11 53) x0_ack!5155)))
       ((_ to_fp 11 53) x0_ack!5155)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5152)
                       ((_ to_fp 11 53) x1_ack!5151))
               ((_ to_fp 11 53) x1_ack!5151))
       ((_ to_fp 11 53) x2_ack!5152)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5152)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5152)
                       ((_ to_fp 11 53) x1_ack!5151)))
       ((_ to_fp 11 53) x1_ack!5151)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5151)
                    ((_ to_fp 11 53) x0_ack!5155))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5152)
                    ((_ to_fp 11 53) x1_ack!5151))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5153) ((_ to_fp 11 53) b_ack!5154))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5153) ((_ to_fp 11 53) x0_ack!5155))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5154) ((_ to_fp 11 53) x2_ack!5152))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5153) ((_ to_fp 11 53) b_ack!5154))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5153) ((_ to_fp 11 53) x0_ack!5155))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5153) ((_ to_fp 11 53) x1_ack!5151)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5151) ((_ to_fp 11 53) a_ack!5153))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5154) ((_ to_fp 11 53) x1_ack!5151))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5154) ((_ to_fp 11 53) x2_ack!5152)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5152)
                    ((_ to_fp 11 53) x1_ack!5151))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5153)
                       ((_ to_fp 11 53) x1_ack!5151))
               ((_ to_fp 11 53) x1_ack!5151))
       ((_ to_fp 11 53) a_ack!5153)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5153)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5153)
                       ((_ to_fp 11 53) x1_ack!5151)))
       ((_ to_fp 11 53) x1_ack!5151)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5153)
          ((_ to_fp 11 53) x1_ack!5151))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!5154)
          ((_ to_fp 11 53) x1_ack!5151))))

(check-sat)
(exit)
