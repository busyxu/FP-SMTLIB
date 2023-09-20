(declare-fun x1_ack!7362 () (_ BitVec 64))
(declare-fun x0_ack!7368 () (_ BitVec 64))
(declare-fun x2_ack!7363 () (_ BitVec 64))
(declare-fun b_ack!7367 () (_ BitVec 64))
(declare-fun a_ack!7366 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7364 () (_ BitVec 64))
(declare-fun y1_ack!7365 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7368) ((_ to_fp 11 53) x1_ack!7362)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7362) ((_ to_fp 11 53) x2_ack!7363)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7362)
                       ((_ to_fp 11 53) x0_ack!7368))
               ((_ to_fp 11 53) x0_ack!7368))
       ((_ to_fp 11 53) x1_ack!7362)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7362)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7362)
                       ((_ to_fp 11 53) x0_ack!7368)))
       ((_ to_fp 11 53) x0_ack!7368)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7363)
                       ((_ to_fp 11 53) x1_ack!7362))
               ((_ to_fp 11 53) x1_ack!7362))
       ((_ to_fp 11 53) x2_ack!7363)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7363)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7363)
                       ((_ to_fp 11 53) x1_ack!7362)))
       ((_ to_fp 11 53) x1_ack!7362)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7362)
                    ((_ to_fp 11 53) x0_ack!7368))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7363)
                    ((_ to_fp 11 53) x1_ack!7362))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7366) ((_ to_fp 11 53) b_ack!7367))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7366) ((_ to_fp 11 53) x0_ack!7368))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7367) ((_ to_fp 11 53) x2_ack!7363))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7366) ((_ to_fp 11 53) b_ack!7367))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7366) ((_ to_fp 11 53) x0_ack!7368))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7366) ((_ to_fp 11 53) x1_ack!7362))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7367) ((_ to_fp 11 53) x0_ack!7368)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7362)
                    ((_ to_fp 11 53) x0_ack!7368))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!7365)
          ((_ to_fp 11 53) y0_ack!7364))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!7362)
          ((_ to_fp 11 53) x0_ack!7368))))

(check-sat)
(exit)
